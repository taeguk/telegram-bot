function on_msg_receive (msg)
	if ( msg.text == 'hello' ) then
		send_msg(msg.from.print_name, "world", ok_cb, false)
		return
	end
end
function ok_cb(extra, success, result)
end
