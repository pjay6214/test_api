from fastapi import FastAPI

app = FastAPI()

@app.get("/{search}")
def read_item(search: str):
    return {"message": f"Hello {search}"}

# Run FastAPI server
if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="0.0.0.0", port=8000)
