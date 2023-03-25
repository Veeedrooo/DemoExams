namespace DemoExams
{
    partial class fmGrid
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(fmGrid));
            this.panel1 = new System.Windows.Forms.Panel();
            this.label1 = new System.Windows.Forms.Label();
            this.panel2 = new System.Windows.Forms.Panel();
            this.GridNameTransport = new System.Windows.Forms.DataGridView();
            this.dergachIspDataSet = new DemoExams.dergachIspDataSet();
            this.transportBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.transportTableAdapter = new DemoExams.dergachIspDataSetTableAdapters.transportTableAdapter();
            this.transportmodelDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.GridTransportInfo = new System.Windows.Forms.DataGridView();
            this.dergachIspDataSet1 = new DemoExams.dergachIspDataSet1();
            this.transportBindingSource1 = new System.Windows.Forms.BindingSource(this.components);
            this.transportTableAdapter1 = new DemoExams.dergachIspDataSet1TableAdapters.transportTableAdapter();
            this.transportcolorDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.transportmodelDataGridViewTextBoxColumn1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.transportnumberDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.datemanufactureDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.currentpointlocationaddressDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.priceDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.buttonAdd = new System.Windows.Forms.Button();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.GridNameTransport)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dergachIspDataSet)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.transportBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.GridTransportInfo)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dergachIspDataSet1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.transportBindingSource1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(221)))), ((int)(((byte)(37)))), ((int)(((byte)(181)))));
            this.panel1.Controls.Add(this.buttonAdd);
            this.panel1.Controls.Add(this.label1);
            this.panel1.Controls.Add(this.pictureBox1);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(670, 113);
            this.panel1.TabIndex = 12;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Gabriola", 18F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.label1.Location = new System.Drawing.Point(146, 37);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(204, 45);
            this.label1.TabIndex = 1;
            this.label1.Text = "Компания «Мегадрайв»";
            // 
            // panel2
            // 
            this.panel2.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(221)))), ((int)(((byte)(37)))), ((int)(((byte)(181)))));
            this.panel2.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.panel2.Location = new System.Drawing.Point(0, 350);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(670, 100);
            this.panel2.TabIndex = 13;
            // 
            // GridNameTransport
            // 
            this.GridNameTransport.AutoGenerateColumns = false;
            this.GridNameTransport.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.GridNameTransport.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.transportmodelDataGridViewTextBoxColumn});
            this.GridNameTransport.DataSource = this.transportBindingSource;
            this.GridNameTransport.Dock = System.Windows.Forms.DockStyle.Left;
            this.GridNameTransport.Location = new System.Drawing.Point(0, 113);
            this.GridNameTransport.Name = "GridNameTransport";
            this.GridNameTransport.Size = new System.Drawing.Size(176, 237);
            this.GridNameTransport.TabIndex = 14;
            // 
            // dergachIspDataSet
            // 
            this.dergachIspDataSet.DataSetName = "dergachIspDataSet";
            this.dergachIspDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // transportBindingSource
            // 
            this.transportBindingSource.DataMember = "transport";
            this.transportBindingSource.DataSource = this.dergachIspDataSet;
            // 
            // transportTableAdapter
            // 
            this.transportTableAdapter.ClearBeforeFill = true;
            // 
            // transportmodelDataGridViewTextBoxColumn
            // 
            this.transportmodelDataGridViewTextBoxColumn.DataPropertyName = "transport_model";
            this.transportmodelDataGridViewTextBoxColumn.HeaderText = "transport_model";
            this.transportmodelDataGridViewTextBoxColumn.Name = "transportmodelDataGridViewTextBoxColumn";
            // 
            // GridTransportInfo
            // 
            this.GridTransportInfo.AutoGenerateColumns = false;
            this.GridTransportInfo.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.GridTransportInfo.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.transportcolorDataGridViewTextBoxColumn,
            this.transportmodelDataGridViewTextBoxColumn1,
            this.transportnumberDataGridViewTextBoxColumn,
            this.datemanufactureDataGridViewTextBoxColumn,
            this.currentpointlocationaddressDataGridViewTextBoxColumn,
            this.priceDataGridViewTextBoxColumn});
            this.GridTransportInfo.DataSource = this.transportBindingSource1;
            this.GridTransportInfo.Dock = System.Windows.Forms.DockStyle.Left;
            this.GridTransportInfo.Location = new System.Drawing.Point(176, 113);
            this.GridTransportInfo.Name = "GridTransportInfo";
            this.GridTransportInfo.Size = new System.Drawing.Size(257, 237);
            this.GridTransportInfo.TabIndex = 15;
            // 
            // dergachIspDataSet1
            // 
            this.dergachIspDataSet1.DataSetName = "dergachIspDataSet1";
            this.dergachIspDataSet1.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // transportBindingSource1
            // 
            this.transportBindingSource1.DataMember = "transport";
            this.transportBindingSource1.DataSource = this.dergachIspDataSet1;
            // 
            // transportTableAdapter1
            // 
            this.transportTableAdapter1.ClearBeforeFill = true;
            // 
            // transportcolorDataGridViewTextBoxColumn
            // 
            this.transportcolorDataGridViewTextBoxColumn.DataPropertyName = "transport_color";
            this.transportcolorDataGridViewTextBoxColumn.HeaderText = "transport_color";
            this.transportcolorDataGridViewTextBoxColumn.Name = "transportcolorDataGridViewTextBoxColumn";
            // 
            // transportmodelDataGridViewTextBoxColumn1
            // 
            this.transportmodelDataGridViewTextBoxColumn1.DataPropertyName = "transport_model";
            this.transportmodelDataGridViewTextBoxColumn1.HeaderText = "transport_model";
            this.transportmodelDataGridViewTextBoxColumn1.Name = "transportmodelDataGridViewTextBoxColumn1";
            // 
            // transportnumberDataGridViewTextBoxColumn
            // 
            this.transportnumberDataGridViewTextBoxColumn.DataPropertyName = "transport_number";
            this.transportnumberDataGridViewTextBoxColumn.HeaderText = "transport_number";
            this.transportnumberDataGridViewTextBoxColumn.Name = "transportnumberDataGridViewTextBoxColumn";
            // 
            // datemanufactureDataGridViewTextBoxColumn
            // 
            this.datemanufactureDataGridViewTextBoxColumn.DataPropertyName = "date_manufacture";
            this.datemanufactureDataGridViewTextBoxColumn.HeaderText = "date_manufacture";
            this.datemanufactureDataGridViewTextBoxColumn.Name = "datemanufactureDataGridViewTextBoxColumn";
            // 
            // currentpointlocationaddressDataGridViewTextBoxColumn
            // 
            this.currentpointlocationaddressDataGridViewTextBoxColumn.DataPropertyName = "current_point_location_address";
            this.currentpointlocationaddressDataGridViewTextBoxColumn.HeaderText = "current_point_location_address";
            this.currentpointlocationaddressDataGridViewTextBoxColumn.Name = "currentpointlocationaddressDataGridViewTextBoxColumn";
            // 
            // priceDataGridViewTextBoxColumn
            // 
            this.priceDataGridViewTextBoxColumn.DataPropertyName = "price";
            this.priceDataGridViewTextBoxColumn.HeaderText = "price";
            this.priceDataGridViewTextBoxColumn.Name = "priceDataGridViewTextBoxColumn";
            // 
            // buttonAdd
            // 
            this.buttonAdd.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(5)))), ((int)(((byte)(192)))), ((int)(((byte)(190)))));
            this.buttonAdd.Font = new System.Drawing.Font("Gabriola", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.buttonAdd.Location = new System.Drawing.Point(545, 45);
            this.buttonAdd.Name = "buttonAdd";
            this.buttonAdd.Size = new System.Drawing.Size(98, 32);
            this.buttonAdd.TabIndex = 2;
            this.buttonAdd.Text = "Добавить";
            this.buttonAdd.UseVisualStyleBackColor = false;
            this.buttonAdd.Click += new System.EventHandler(this.buttonAdd_Click);
            // 
            // pictureBox1
            // 
            this.pictureBox1.Image = global::DemoExams.Properties.Resources.логотип;
            this.pictureBox1.Location = new System.Drawing.Point(12, 12);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(117, 83);
            this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pictureBox1.TabIndex = 0;
            this.pictureBox1.TabStop = false;
            // 
            // fmGrid
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(670, 450);
            this.Controls.Add(this.GridTransportInfo);
            this.Controls.Add(this.GridNameTransport);
            this.Controls.Add(this.panel2);
            this.Controls.Add(this.panel1);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "fmGrid";
            this.Text = "fmGrid";
            this.Load += new System.EventHandler(this.fmGrid_Load);
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.GridNameTransport)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dergachIspDataSet)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.transportBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.GridTransportInfo)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dergachIspDataSet1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.transportBindingSource1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.DataGridView GridNameTransport;
        private dergachIspDataSet dergachIspDataSet;
        private System.Windows.Forms.BindingSource transportBindingSource;
        private dergachIspDataSetTableAdapters.transportTableAdapter transportTableAdapter;
        private System.Windows.Forms.DataGridViewTextBoxColumn transportmodelDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridView GridTransportInfo;
        private dergachIspDataSet1 dergachIspDataSet1;
        private System.Windows.Forms.BindingSource transportBindingSource1;
        private dergachIspDataSet1TableAdapters.transportTableAdapter transportTableAdapter1;
        private System.Windows.Forms.DataGridViewTextBoxColumn transportcolorDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn transportmodelDataGridViewTextBoxColumn1;
        private System.Windows.Forms.DataGridViewTextBoxColumn transportnumberDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn datemanufactureDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn currentpointlocationaddressDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn priceDataGridViewTextBoxColumn;
        private System.Windows.Forms.Button buttonAdd;
    }
}