namespace OBTS.Models
{
    public class Account
    {
        public int AccId { get; set; }

        public string AccName { get; set; }
        public string AccType { get; set; }
        public string UserName { get; set; }
        public string Password { get; set; }
        public string Amount { get; set; }
        public string RecStatus { get; set; } = "A";
        public int SecurityQuestionId { get; set; }
        

    }
}
