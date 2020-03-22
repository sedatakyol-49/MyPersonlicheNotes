using MyPersonlicheNotes.Base;
using MyPersonlicheNotes.UI.Model;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;

namespace MyPersonlicheNotes.UI.ViewModel
{
    public class NoteViewModel:ViewModelBase
    {
        public ObservableCollection<Note> Notes { get; set; }
        public ICommand OnNoteDetailCommand { get; set; }
        public ICommand OnNoteInsertCommand { get; set; }
        public ICommand OnNoteDeleteCommand { get; set; }
        public ICommand OnExitCommand { get; set; }
        public Note noteModel;
        public Note NoteModel
        {
            get { return noteModel; }
            set { noteModel = value; }
        }

        public NoteViewModel()
        {
            noteModel = new Note();
            Load();

            OnNoteDetailCommand = new RelayCommand<Note>(OnDetail);
            OnNoteInsertCommand = new RelayCommand<Note>(OnInsert);
            OnNoteDeleteCommand = new RelayCommand<Note>(OnDeleted);
            OnExitCommand = new RelayCommand<Note>(OnExit);

            noteModel = new Note();
            Load();
        }

        public void Load()
        {
            Notes = new ObservableCollection<Note>
            {
                               new Note { Title = "Merhaba Dünya", Description = "Bu bir WPF uygulamasıdır. Basit ve minimalist bir not defteri.", Datetimes = DateTime.Now },
                new Note { Title = "Hafta sonu", Description = "Bu bir WPF uygulamasıdır. Basit ve minimalist bir not defteri.", Datetimes = DateTime.Now },
                new Note { Title = "MVVM giriş. ", Description = "Bu bir WPF uygulamasıdır. Basit ve minimalist bir not defteri.", Datetimes = DateTime.Now },
                new Note { Title = "Merhaba Dünya", Description = "Bu bir WPF uygulamasıdır. Basit ve minimalist bir not defteri.", Datetimes = DateTime.Now },
                new Note { Title = "Hafta sonu", Description = "Bu bir WPF uygulamasıdır. Basit ve minimalist bir not defteri.", Datetimes= DateTime.Now },
                new Note { Title = "MVVM giriş. ", Description = "Bu bir WPF uygulamasıdır. Basit ve minimalist bir not defteri.", Datetimes = DateTime.Now },
                new Note { Title = "Merhaba Dünya", Description = "Bu bir WPF uygulamasıdır. Basit ve minimalist bir not defteri.", Datetimes = DateTime.Now },
                new Note { Title = "Hafta sonu", Description = "Bu bir WPF uygulamasıdır. Basit ve minimalist bir not defteri.", Datetimes = DateTime.Now },
                new Note { Title = "MVVM giriş. ", Description = "Bu bir WPF uygulamasıdır. Basit ve minimalist bir not defteri.", Datetimes = DateTime.Now },
                new Note { Title = "Merhaba Dünya", Description = "Bu bir WPF uygulamasıdır. Basit ve minimalist bir not defteri.", Datetimes = DateTime.Now },
                new Note { Title = "Hafta sonu", Description = "Bu bir WPF uygulamasıdır. Basit ve minimalist bir not defteri.", Datetimes = DateTime.Now },
                new Note { Title = "MVVM giriş. ", Description = "Bu bir WPF uygulamasıdır. Basit ve minimalist bir not defteri.", Datetimes = DateTime.Now }
            };
        }

        public void OnDetail(Note note)
        {
            if (note != null)
            {
                MessageBox.Show($"{note.Title}\n{note.Title}\n{note.Datetimes.ToString()}");
            }
        }

        public void  OnInsert(Note note)
        {
            if(note!=null && note.Title!=null && note.Description!=null && note.Datetimes != null)
            {
                Notes.Add(
                    new Note { 
                Description=note.Description,
                Title=note.Title,
                Datetimes=note.Datetimes
                });

                NoteModel.Clear();
            }
            else
            {
                MessageBox.Show("Bitte füllen alle Felden aus!");
            }
        }

        public void OnDeleted(Note note)
        {
            if (note != null)
            {
                Notes.Remove(note);
            }
        }

        public void OnExit(Object item) => Application.Current.Shutdown();




    }
}
