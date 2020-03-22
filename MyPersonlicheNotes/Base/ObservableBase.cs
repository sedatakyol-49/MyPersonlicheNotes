using System;
using System.Collections.Generic;
using System.ComponentModel;

namespace MyPersonlicheNotes.Base
{
    public class ObservableBase : INotifyPropertyChanged
    {
        public event PropertyChangedEventHandler PropertyChanged;
            
        protected void RaisePropertyChanged(string property)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(property));
        }
            
    }
}
