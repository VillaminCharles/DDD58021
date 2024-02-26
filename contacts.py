import tkinter as tk
from tkinter import ttk, messagebox

class ContactList:
    def __init__(self, window):
        self.contacts = [
            ("Charles Villamin", "123455"),
            ("Rusell Banta", "12331321"),
            ("Rusell Vileta", "3214412"),
            ("Jeralph Red", "31232131231"),
            ("Jeralph Olea", "65463353"),
            ("Eberhard Josh", "231321312"),
            ("Eberhard De Casa", "423423423"),
            ("Charles Braga", "4934923"),
            ("James Yumang", "65555555"),
            ("Gabriel Borvs", "45555555"),
            ("John Andrey", "2333333333"),
            ("John Jo", "2111131131"),
            ("James Bernard", "9129999"),
            ("Gabriel Salvs", "92312391912"),
            ("Gabriel Boribodor", "099287732121")
        ]

        self.window = window
        self.window.title("PhoneBook")

        self.setup_ui()

    def setup_ui(self):
        self.window.geometry("500x400")
        self.window.resizable(0, 0)
        self.window.config(bg="#14213d")

        style = ttk.Style(self.window)
        style.theme_use("default")
        style.configure("Treeview", background="#f0f4c3", fieldbackground="#F7D0FF", foreground="#000000")
        style.configure("Treeview.Heading", background="#9e9e9e", font=("Helvetica", 12, "bold"))

        self.title_label = tk.Label(self.window, text="PhoneBook", font=("Gabriola", 24), bg="#14213d", fg="#F0FFF4")
        self.title_label.grid(row=0, column=0, pady=10, columnspan=3)

        self.search_var = tk.StringVar()
        self.search_entry = tk.Entry(self.window, textvariable=self.search_var, width=30, font=("Helvetica", 12), relief=tk.FLAT)
        self.search_entry.grid(row=1, column=0, padx=10, pady=10)

        search_button = tk.Button(self.window, text="Search", relief=tk.FLAT, activebackground="#1BFF1E", font=("Helvetica", 12, "bold"), bg="#8AFF1B", fg="#14213d", command=self.search)
        search_button.grid(row=1, column=1, pady=10, padx=5)

        clear_search_button = tk.Button(self.window, text="Clear Search", relief=tk.FLAT, activebackground="#FF3B3B", font=("Helvetica", 12, "bold"), bg="#FF6262", fg="#14213d", command=self.clear_search_results)
        clear_search_button.grid(row=1, column=2, pady=10, padx=5)

        self.setup_treeview()

        self.no_result_label = tk.Label(self.window, text="No matching contact found.", font=("Helvetica", 12), bg="#14213d", fg="red")
        self.no_result_label.grid(row=3, column=0, columnspan=3)
        self.no_result_label.grid_forget()

    def setup_treeview(self):
        columns = ("Name", "Phone Number")

        self.tree = ttk.Treeview(self.window, columns=columns, show='headings', height=10)
        self.tree.grid(row=2, column=0, columnspan=3, padx=10, pady=10, sticky="nsew")

        for col in columns:
            self.tree.heading(col, text=col)
            self.tree.column(col, width=200, anchor='se')

        self.treeview_scrollbar = ttk.Scrollbar(self.window, orient=tk.VERTICAL, command=self.tree.yview)
        self.treeview_scrollbar.grid(row=2, column=3, sticky="ns")
        self.tree.configure(yscrollcommand=self.treeview_scrollbar.set)

        self.add_contacts_to_tree()

        self.search_results_tree = ttk.Treeview(self.window, columns=columns, show='headings', height=10)
        self.search_results_tree.grid(row=2, column=0, columnspan=3, padx=10, pady=10, sticky="nsew")
        self.search_results_tree.grid_forget()  # Hide search results initially

    def add_contacts_to_tree(self):
        for data in self.contacts:
            self.tree.insert('', 'end', values=data)

    def search(self):
        name_to_search = self.search_var.get().lower()
        result = [data for data in self.contacts if name_to_search in data[0].lower()]

        if result:
            self.show_search_results(result)
            self.no_result_label.grid_forget()
        else:
            self.show_no_result_message()

    def show_search_results(self, result):
        self.search_results_tree.grid(row=2, column=0, columnspan=3, padx=10, pady=10, sticky="nsew")
        self.tree.grid_forget()
        self.search_results_tree.delete(*self.search_results_tree.get_children())

        for data in result:
            self.search_results_tree.insert('', 'end', values=data)

    def show_no_result_message(self):
        self.no_result_label.grid(row=3, column=0, columnspan=3)
        self.tree.grid_forget()
        self.search_results_tree.grid_forget()

    def clear_search_results(self):
        self.search_results_tree.grid_forget()
        self.tree.grid(row=2, column=0, columnspan=3, padx=10, pady=10, sticky="nsew")

if __name__ == "__main__":
    root = tk.Tk()
    contact_list = ContactList(root)
    root.mainloop()
