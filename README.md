# paramiko-lambda


**Step 1: Build image and zip relevant files** 
```
bash build.sh
cd build
zip -r9 paramiko-layer.zip .
```

**Step 2: Download and upload**
1. Download `paramiko-layer.zip`.
2. Create paramiko AWS Lambda Layers with compatible to Python 3.8
3. Create paramiko AWS Functions with Python 3.8 runtime
4. Add custom layer to paramiko function
5. Write test