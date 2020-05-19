export JAVA_HOME=/usr/lib/jvm/$(archlinux-java get)

services=(
    "adservice"
#    "cartservice"
    "checkoutservice"
    "currencyservice"
#    "emailservice"
    "frontend"
    "paymentservice"
    "productcatalogservice"
#    "recommendationservice"
    "shippingservice"
)

for servicename in ${services[@]}; do
    pushd "src/${servicename}"
    pwd

    chmod +x build.sh
    ./build.sh

    echo "done"
    popd
done;
