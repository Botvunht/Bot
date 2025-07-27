#!/bin/bash

echo "🚀 Setup môi trường..."

# Cập nhật công cụ build
pip install --upgrade pip setuptools wheel cython

# Cài dependencies
pip install -r requirements.txt

# Khởi chạy bằng Gunicorn đúng chuẩn
gunicorn app:app -w 2 -b 0.0.0.0:${PORT}
