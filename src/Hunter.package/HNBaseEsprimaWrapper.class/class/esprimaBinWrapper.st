accessing
esprimaBinWrapper
	^ (GZipReadStream on: self esprimaBinWrapperGzippedBase64 base64Decoded readStream) upToEnd asString