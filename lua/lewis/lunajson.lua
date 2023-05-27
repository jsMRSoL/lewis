local newdecoder = require 'lewis.lunajson.decoder'
local newencoder = require 'lewis.lunajson.encoder'
local sax = require 'lewis.lunajson.sax'
-- If you need multiple contexts of decoder and/or encoder,
-- you can require lunajson.decoder and/or lunajson.encoder directly.
return {
	decode = newdecoder(),
	encode = newencoder(),
	newparser = sax.newparser,
	newfileparser = sax.newfileparser,
}
