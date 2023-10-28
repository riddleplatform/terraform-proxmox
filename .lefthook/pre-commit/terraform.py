import subprocess

subprocess.run(["terraform", "fmt", "-recursive", "./"], shell=True, capture_output=True, text=True)
subprocess.run(["cd", "tests", "&&", "terraform", "init"], shell=True, capture_output=True, text=True)
subprocess.run(["cd", "tests", "&&", "terraform", "validate"], shell=True, capture_output=True, text=True)
subprocess.run(["terraform-docs", "markdown", "./", ">", "README.md"], shell=True, capture_output=True, text=True)
