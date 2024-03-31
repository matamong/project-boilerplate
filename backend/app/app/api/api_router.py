from fastapi import APIRouter

from app.api.endpoints import endpoint_hello

api_router = APIRouter()

api_router.include_router(endpoint_hello.router, tags=["hello"])