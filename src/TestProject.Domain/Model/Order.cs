using System.Collections.Generic;
using TestProject.Domain.ValueObject;

namespace TestProject.Domain.Model
{
    public class Order
    {
        public int Id {get; init; }
        public IEnumerable<LineItem> Items { get; private set;}

        public Order(int id, IEnumerable<LineItem> items)
        {
            Id = id;
            Items = items;
        }
    }
}