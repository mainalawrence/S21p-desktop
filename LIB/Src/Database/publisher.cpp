#include "publisher.h"
namespace DATABASE {
Publisher::Publisher(QObject *parent,DatabaseInstance *instance)
    : QObject(parent),mInstance(instance)
{

}

}
