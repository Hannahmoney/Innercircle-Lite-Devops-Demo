from pydantic import BaseModel
from typing import Optional


class UserCreate(BaseModel):
    name: str
    age: int
    bio: Optional[str] = None


class UserResponse(BaseModel):
    id: int
    name: str
    age: int
    bio: Optional[str] = None

    class Config:
        from_attributes = True


class MatchCreate(BaseModel):
    user_id: int
    matched_user_id: int


class MatchResponse(BaseModel):
    id: int
    user_id: int
    matched_user_id: int

    class Config:
        from_attributes = True