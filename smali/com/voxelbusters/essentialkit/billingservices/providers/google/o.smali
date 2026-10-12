.class public final Lcom/voxelbusters/essentialkit/billingservices/providers/google/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;


# instance fields
.field public final synthetic a:Lcom/voxelbusters/essentialkit/billingservices/providers/google/p;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/essentialkit/billingservices/providers/google/p;)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/o;->a:Lcom/voxelbusters/essentialkit/billingservices/providers/google/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/BillingResult;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/o;->a:Lcom/voxelbusters/essentialkit/billingservices/providers/google/p;

    iget-object p1, p1, Lcom/voxelbusters/essentialkit/billingservices/providers/google/p;->b:Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IAcknowledgePurchaseListener;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IAcknowledgePurchaseListener;->onAcknowlegePurchaseSuccess()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/o;->a:Lcom/voxelbusters/essentialkit/billingservices/providers/google/p;

    iget-object v0, v0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/p;->b:Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IAcknowledgePurchaseListener;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IAcknowledgePurchaseListener;->onAcknowledgePurchaseFailed(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
