from fastapi import APIRouter,Depends, Form, File, UploadFile
# from loguru import logger
from fastapi.requests import Request
from fastapi.responses import JSONResponse
from fastapi.encoders import jsonable_encoder
from .schemas import MessageBody,MessageHeader
#from ..core.upload import create_export_file
from sys import path
# appending a path
path.append('/app/common_libs')
#from redis_wrapper import redis_steams

router = APIRouter(prefix="/api/tasks", tags=["TASKS"])

@router.post("/publish_task")
async def publish_task(message:MessageBody,header:MessageHeader):
   
    return JSONResponse(content=jsonable_encoder({'response':r'es'}))


