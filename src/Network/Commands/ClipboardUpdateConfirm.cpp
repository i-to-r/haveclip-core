/*
  HaveClip

  Copyright (C) 2013 Jakub Skokan <aither@havefun.cz>

  This program is free software: you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation, either version 3 of the License, or
  (at your option) any later version.

  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

#include "ClipboardUpdateConfirm.h"

ClipboardUpdateConfirm::ClipboardUpdateConfirm(ClipboardContainer *cont, Communicator::Role r)
	: BaseCommand(cont, r)
{
}

BaseCommand::Type ClipboardUpdateConfirm::type() const
{
	return BaseCommand::ClipboardUpdateConfirm;
}

void ClipboardUpdateConfirm::receive(QDataStream &ds)
{
	readStatus(ds);

	QStringList tmp;
	ds >> tmp;
	ds >> tmp;

	finish();
}

void ClipboardUpdateConfirm::send(QDataStream &ds)
{
	writeStatus(ds, BaseCommand::Ok);

	ds << QStringList();
	ds << QStringList();

	finish();
}
