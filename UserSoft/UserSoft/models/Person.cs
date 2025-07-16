namespace UserSoft.models
{
    internal class Person
    {
        private long document;
        private string fullname;
        private string birthdate;
        private string photo;
        private string address;
        private string phone;
        private string email;
        private string status;

        public Person() {}

        public Person(long document, string fullname, string birthdate, string photo, string address, string phone, string email, string status)
        {
            this.document = document;
            this.fullname = fullname;
            this.birthdate = birthdate;
            this.photo = photo;
            this.address = address;
            this.phone = phone;
            this.email = email;
            this.status = status;
        }

        public long Document { get => document; set => document = value; }
        public string Fullname { get => fullname; set => fullname = value; }
        public string Birthdate { get => birthdate; set => birthdate = value; }
        public string Photo { get => photo; set => photo = value; }
        public string Address { get => address; set => address = value; }
        public string Phone { get => phone; set => phone = value; }
        public string Email { get => email; set => email = value; }
        public string Status { get => status; set => status = value; }
    }
}
