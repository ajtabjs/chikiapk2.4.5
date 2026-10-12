.class public Lcom/voxelbusters/essentialkit/billingservices/common/BillingClientUtility;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToBillingProduct(Lcom/android/billingclient/api/ProductDetails;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Product details : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/voxelbusters/essentialkit/utilities/Logger;->debug(Ljava/lang/String;)V

    new-instance v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct$Builder;

    invoke-virtual {p0}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct$Builder;->setIdentifier(Ljava/lang/String;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct$Builder;

    invoke-virtual {p0}, Lcom/android/billingclient/api/ProductDetails;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingClientUtility;->extractProductTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct$Builder;->setTitle(Ljava/lang/String;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct$Builder;

    invoke-virtual {p0}, Lcom/android/billingclient/api/ProductDetails;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct$Builder;->setDescription(Ljava/lang/String;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct$Builder;

    invoke-static {p0}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingClientUtility;->getPrice(Lcom/android/billingclient/api/ProductDetails;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingPrice;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct$Builder;->setPrice(Lcom/voxelbusters/essentialkit/billingservices/common/BillingPrice;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct$Builder;->setIsAvailable(Z)Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct$Builder;

    invoke-static {p0}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingClientUtility;->convertToSubscriptionInfo(Lcom/android/billingclient/api/ProductDetails;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct$Builder;->setSubscriptionInfo(Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionInfo;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct$Builder;

    invoke-static {p0}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingClientUtility;->getOffers(Lcom/android/billingclient/api/ProductDetails;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct$Builder;->setOffers(Ljava/util/List;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct$Builder;

    invoke-virtual {v0}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct$Builder;->build()Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct;

    move-result-object p0

    return-object p0
.end method

.method public static convertToSubscriptionInfo(Lcom/android/billingclient/api/ProductDetails;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionInfo;
    .locals 4

    invoke-virtual {p0}, Lcom/android/billingclient/api/ProductDetails;->getSubscriptionOfferDetails()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/billingclient/api/ProductDetails;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingClientUtility;->getBasePlan(Ljava/util/List;)Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    move-result-object v0

    invoke-static {v0}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingClientUtility;->getSubscriptionPeriodOfBasePlan(Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingPeriod;

    move-result-object v0

    new-instance v2, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionInfo;

    const/4 v3, -0x1

    invoke-direct {v2, p0, v1, v3, v0}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/voxelbusters/essentialkit/billingservices/common/BillingPeriod;)V

    return-object v2

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static extractProductTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "("

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/voxelbusters/essentialkit/utilities/Logger;->error(Ljava/lang/String;)V

    return-object p0
.end method

.method private static getBasePlan(Ljava/util/List;)Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;",
            ">;)",
            "Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingClientUtility;->getSubscriptionOfferDetails(Ljava/util/List;Ljava/lang/String;)Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    move-result-object p0

    return-object p0
.end method

.method private static getBillingCurrency(Lcom/android/billingclient/api/ProductDetails$PricingPhase;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingPrice;
    .locals 7

    invoke-virtual {p0}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/voxelbusters/essentialkit/billingservices/common/BillingPrice;

    invoke-virtual {p0}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getPriceAmountMicros()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x49742400    # 1000000.0f

    div-float/2addr v0, v1

    float-to-double v1, v0

    invoke-static {v3}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Currency;->getSymbol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getFormattedPrice()Ljava/lang/String;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingPrice;-><init>(DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method private static getOfferCategory(Ljava/util/List;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferCategory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferCategory;"
        }
    .end annotation

    if-eqz p0, :cond_2

    const-string v0, "intro"

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferCategory;->Introductory:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferCategory;

    return-object p0

    :cond_0
    const-string v0, "promo"

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferCategory;->Promotional:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferCategory;

    return-object p0

    :cond_1
    const-string v0, "code"

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferCategory;->Code:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferCategory;

    return-object p0

    :cond_2
    sget-object p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferCategory;->Unknown:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferCategory;

    return-object p0
.end method

.method private static getOfferPaymentMode(Lcom/android/billingclient/api/ProductDetails$PricingPhase;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferPaymentMode;
    .locals 6

    invoke-virtual {p0}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getRecurrenceMode()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getBillingCycleCount()I

    move-result v1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getPriceAmountMicros()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    sget-object p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferPaymentMode;->FreeTrial:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferPaymentMode;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-le v1, v0, :cond_1

    sget-object p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferPaymentMode;->PayAsYouGo:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferPaymentMode;

    return-object p0

    :cond_1
    if-ne v1, v0, :cond_2

    sget-object p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferPaymentMode;->PayUpFront:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferPaymentMode;

    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown offer payment mode for pricing phase: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/voxelbusters/essentialkit/utilities/Logger;->warning(Ljava/lang/String;)V

    sget-object p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferPaymentMode;->Unknown:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferPaymentMode;

    return-object p0
.end method

.method private static getOfferPricingPhases(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/ProductDetails$PricingPhase;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferPricingPhase;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/ProductDetails$PricingPhase;

    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getRecurrenceMode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingClientUtility;->getBillingCurrency(Lcom/android/billingclient/api/ProductDetails$PricingPhase;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingPrice;

    move-result-object v2

    invoke-static {v1}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingClientUtility;->getOfferPaymentMode(Lcom/android/billingclient/api/ProductDetails$PricingPhase;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferPaymentMode;

    move-result-object v3

    new-instance v4, Lcom/voxelbusters/essentialkit/billingservices/common/BillingPeriod;

    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getBillingPeriod()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingPeriod;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getBillingCycleCount()I

    move-result v1

    new-instance v5, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferPricingPhase;

    invoke-direct {v5, v2, v3, v4, v1}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferPricingPhase;-><init>(Lcom/voxelbusters/essentialkit/billingservices/common/BillingPrice;Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferPaymentMode;Lcom/voxelbusters/essentialkit/billingservices/common/BillingPeriod;I)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static getOffers(Lcom/android/billingclient/api/ProductDetails;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/ProductDetails;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOffer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Lcom/android/billingclient/api/ProductDetails;->getSubscriptionOfferDetails()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getOfferId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getOfferId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getOfferTags()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingClientUtility;->getOfferCategory(Ljava/util/List;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferCategory;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getPricingPhases()Lcom/android/billingclient/api/ProductDetails$PricingPhases;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails$PricingPhases;->getPricingPhaseList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingClientUtility;->getOfferPricingPhases(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    new-instance v4, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOffer;

    invoke-direct {v4, v2, v3, v1}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOffer;-><init>(Ljava/lang/String;Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferCategory;Ljava/util/List;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method private static getPrice(Lcom/android/billingclient/api/ProductDetails;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingPrice;
    .locals 7

    invoke-virtual {p0}, Lcom/android/billingclient/api/ProductDetails;->getProductType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "inapp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/billingclient/api/ProductDetails;->getOneTimePurchaseOfferDetails()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/voxelbusters/essentialkit/billingservices/common/BillingPrice;

    invoke-virtual {p0}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getPriceAmountMicros()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x49742400    # 1000000.0f

    div-float/2addr v0, v1

    float-to-double v1, v0

    invoke-static {v3}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Currency;->getSymbol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getFormattedPrice()Ljava/lang/String;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingPrice;-><init>(DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6

    :cond_0
    invoke-virtual {p0}, Lcom/android/billingclient/api/ProductDetails;->getSubscriptionOfferDetails()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingClientUtility;->getBasePlan(Ljava/util/List;)Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingClientUtility;->getPricingPhaseOfBasePlan(Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;)Lcom/android/billingclient/api/ProductDetails$PricingPhase;

    move-result-object p0

    invoke-static {p0}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingClientUtility;->getBillingCurrency(Lcom/android/billingclient/api/ProductDetails$PricingPhase;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingPrice;

    move-result-object p0

    return-object p0
.end method

.method private static getPricingPhaseOfBasePlan(Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;)Lcom/android/billingclient/api/ProductDetails$PricingPhase;
    .locals 5

    invoke-virtual {p0}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getPricingPhases()Lcom/android/billingclient/api/ProductDetails$PricingPhases;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/billingclient/api/ProductDetails$PricingPhases;->getPricingPhaseList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/ProductDetails$PricingPhase;

    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getPriceAmountMicros()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getSubscriptionOfferDetails(Ljava/util/List;Ljava/lang/String;)Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getOfferId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getSubscriptionPeriodOfBasePlan(Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingPeriod;
    .locals 1

    invoke-static {p0}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingClientUtility;->getPricingPhaseOfBasePlan(Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;)Lcom/android/billingclient/api/ProductDetails$PricingPhase;

    move-result-object p0

    new-instance v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingPeriod;

    invoke-virtual {p0}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getBillingPeriod()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingPeriod;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
