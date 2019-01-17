using System;
using Xunit;
using PocWeb.Controllers;

namespace poc.app.test
{
    public class ValuesControllerTest
    {
        [Fact]
        public void Test1()
        {
            // Arrange

            var controller = new ValuesController();

            // Act
            var result = (string[]) controller.Get().Value;

            // Assert
            Assert.True(result.Length == 2);
            Assert.Equal("value1", result[0]);            
            Assert.Equal("value2", result[1]);
        }
    }
}
