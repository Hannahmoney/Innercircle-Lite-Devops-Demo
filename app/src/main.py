from fastapi import FastAPI, Depends, HTTPException
from sqlalchemy.orm import Session

from . import models, schemas
from .database import engine, Base, get_db

Base.metadata.create_all(bind=engine)

app = FastAPI(title="InnerCircle Lite API")


@app.get("/health")
def health():
    return {"status": "ok"}


@app.post("/users", response_model=schemas.UserResponse)
def create_user(user: schemas.UserCreate, db: Session = Depends(get_db)):
    new_user = models.User(
        name=user.name,
        age=user.age,
        bio=user.bio
    )
    db.add(new_user)
    db.commit()
    db.refresh(new_user)
    return new_user


@app.get("/profiles", response_model=list[schemas.UserResponse])
def get_profiles(db: Session = Depends(get_db)):
    users = db.query(models.User).all()
    return users


@app.post("/match", response_model=schemas.MatchResponse)
def create_match(match: schemas.MatchCreate, db: Session = Depends(get_db)):
    user = db.query(models.User).filter(models.User.id == match.user_id).first()
    matched_user = db.query(models.User).filter(models.User.id == match.matched_user_id).first()

    if not user or not matched_user:
        raise HTTPException(status_code=404, detail="One or both users not found")

    new_match = models.Match(
        user_id=match.user_id,
        matched_user_id=match.matched_user_id
    )
    db.add(new_match)
    db.commit()
    db.refresh(new_match)
    return new_match