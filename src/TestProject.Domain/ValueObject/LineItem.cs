namespace TestProject.Domain.ValueObject
{
    public record LineItem(string ProductId, Money Price, int Quantity);
}