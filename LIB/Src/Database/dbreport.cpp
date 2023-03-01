#include "dbreport.h"

namespace DATABASE {

Report::Report(QObject *parent,DatabaseInstance *instance)
    : QObject(parent),mInstance(instance)
{

}

}
