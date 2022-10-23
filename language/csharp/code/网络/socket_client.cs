using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Sockets;
using System.Net;
using System.Text;
using System.Threading.Tasks;

namespace SocketClient {
    class Program {
        static void Main(string[] args) {
            Socket tcpClient = new Socket(AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.Tcp);
            //建立连接
            IPAddress ipaddress = IPAddress.Parse("127.0.0.1");
            EndPoint point = new IPEndPoint(ipaddress, 8080);
            tcpClient.Connect(point);
            byte[] data = new byte[1024];
            int length = tcpClient.Receive(data);
            string msg = Encoding.UTF8.GetString(data, 0, length);
            Console.WriteLine(msg);
        }        
    }
}
