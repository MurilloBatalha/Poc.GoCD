﻿using System;
using System.Threading;

namespace Poc.App
{
    class Program
    {
        static void Main(string[] args)
        {
            while(true)
            {
                Console.WriteLine("Hello World!");
                Thread.Sleep(60000);
            }
        }
    }
}
