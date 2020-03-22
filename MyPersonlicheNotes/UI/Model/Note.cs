using MyPersonlicheNotes.Base;
using System;


namespace MyPersonlicheNotes.UI.Model
{
    public class Note:ObservableBase
    {
        private string title;
        private string description;
        private DateTime dateTime = DateTime.Now;

        public string Title
        {
            get
            {
                return title;
            }
            set
            {
                if (title != value)
                {
                    title = value;
                    RaisePropertyChanged("Title");
                }
            }
        }

        public string Description
        {
            get
            {
                return description;
            }
            set
            {
                if (description != value)
                {
                    description = value;
                    RaisePropertyChanged("Description");
                }
            }
        }

        public DateTime Datetimes
        {
            get
            {
                return dateTime;
            }
            set
            {
                if (dateTime != value)
                {
                    dateTime = value;
                    RaisePropertyChanged("Datetimes");
                }
            }
        }

        public void Clear()
        {
            Title = null;
            Description = null;
            Datetimes = DateTime.Now;
        }
    }
}
