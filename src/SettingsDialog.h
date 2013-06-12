#ifndef SETTINGSDIALOG_H
#define SETTINGSDIALOG_H

#include <QDialog>
#include <QSettings>
#include <QListWidgetItem>

#define NODE_ADD_STR tr("IP address:port")

namespace Ui {
class SettingsDialog;
}

class SettingsDialog : public QDialog
{
	Q_OBJECT
	
public:
	explicit SettingsDialog(QSettings *settings, QWidget *parent = 0);
	~SettingsDialog();
	QStringList nodes();
	bool historyEnabled();
	int historySize();
	QString host();
	int port();
	QString password();
	
private:
	Ui::SettingsDialog *ui;

private slots:
	void addNode();
	void editNode();
	void deleteNode();
	void nodeChange(QString str);
};

#endif // SETTINGSDIALOG_H
