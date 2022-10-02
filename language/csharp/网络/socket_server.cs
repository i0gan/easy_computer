//using System.Text;
using System.Net.Sockets;
using System.Net;
using System;
using System.Text;


namespace TestSocket{
	class Program {
		static void Main(String[] args) {
			Socket tcpServer = new Socket (AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.Tcp);
			IPAddress ipaddress = new IPAddress(new byte[]{127,0,0,1});
			EndPoint point = new IPEndPoint(ipaddress, 8080);
			tcpServer.Bind(point);
            // tcpServer.Bind(new IPEndPoint(IPAddress.Parse("127.0.0.1"), 8080));
			tcpServer.Listen(100); // 参数为最大连接数
            Socket clientSocket = tcpServer.Accept(); // 阻塞接收客户端

            string msg = "hello";
            byte[] data = Encoding.UTF8.GetBytes(msg);
            clientSocket.Send(data);
		}
	}
}
