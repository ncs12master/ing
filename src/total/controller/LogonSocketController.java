package total.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import total.service.MessageService;

@Controller("logonSocketController")
public class LogonSocketController extends TextWebSocketHandler {
	@Autowired
	MessageService messageService;
	
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		String key =(String)session.getAttributes().get("logon");
		messageService.addWebSocket(key, session);
	}

	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		String key =(String)session.getAttributes().get("logon");
		messageService.removeWebSocket(key, session);
	}

}
