#include "groups.h"

namespace DATABASE {
Groups::Groups(QObject *parent,DatabaseInstance *databaseInstance)
    : QObject(parent),mInstance(databaseInstance)
{

}
}

