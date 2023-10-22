import subprocess

subprocess.run(["terraform", "fmt", "-recursive", "./"], shell=True, capture_output=True, text=True)
subprocess.run(["terraform-docs", "markdown", "./", ">", "README.md"], shell=True, capture_output=True, text=True)
