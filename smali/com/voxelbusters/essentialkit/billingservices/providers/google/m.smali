.class public final Lcom/voxelbusters/essentialkit/billingservices/providers/google/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/ConsumeResponseListener;


# instance fields
.field public final synthetic a:Lcom/voxelbusters/essentialkit/billingservices/providers/google/n;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/essentialkit/billingservices/providers/google/n;)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/m;->a:Lcom/voxelbusters/essentialkit/billingservices/providers/google/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConsumeResponse(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p2

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/m;->a:Lcom/voxelbusters/essentialkit/billingservices/providers/google/n;

    iget-object p1, p1, Lcom/voxelbusters/essentialkit/billingservices/providers/google/n;->c:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;

    invoke-static {p1}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->access$000(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;)V

    iget-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/m;->a:Lcom/voxelbusters/essentialkit/billingservices/providers/google/n;

    iget-object p1, p1, Lcom/voxelbusters/essentialkit/billingservices/providers/google/n;->b:Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IConsumePurchaseListener;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IConsumePurchaseListener;->onConsumePurchaseSuccess()V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/m;->a:Lcom/voxelbusters/essentialkit/billingservices/providers/google/n;

    iget-object p2, p2, Lcom/voxelbusters/essentialkit/billingservices/providers/google/n;->b:Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IConsumePurchaseListener;

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IConsumePurchaseListener;->onConsumePurchaseFailed(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
