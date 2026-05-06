# DSP_Digital-Watermark
MATLAB implementation of Digital Image Watermarking using DWT for DSP applications.

# Digital Image Watermarking using DWT

This project implements Digital Image Watermarking using Discrete Wavelet Transform (DWT) in MATLAB.

## Project Overview
The watermark image is embedded into the cover image using Haar Wavelet Transform. The LL sub-band of the cover image is modified to insert the watermark. The embedded watermark can later be extracted from the watermarked image.

## Features
- DWT based image watermarking
- Watermark embedding and extraction
- Haar wavelet transform
- MATLAB implementation
- Simple and efficient DSP project

## Files
- `watermark_embed.m` → Embeds watermark into image
- `watermark_extract.m` → Extracts watermark
- `cover.png` → Original image
- `watermark.png` → Watermark image
- `watermarked.png` → Output watermarked image

## Software Used
- MATLAB
- Image Processing Toolbox
- Wavelet Toolbox

## Methodology
1. Read cover image and watermark image
2. Convert images to grayscale
3. Apply DWT to the cover image
4. Embed watermark into LL sub-band
5. Reconstruct image using inverse DWT
6. Extract watermark from watermarked image

## Applications
- Copyright protection
- Digital authentication
- Secure multimedia transmission
- Ownership verification

## Output
The project successfully embeds and extracts the watermark image using DWT.
