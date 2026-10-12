.class public final Lcom/voxelbusters/essentialkit/billingservices/providers/google/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/BillingClientStateListener;


# instance fields
.field public final synthetic a:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/g;->a:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBillingServiceDisconnected()V
    .locals 2

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/g;->a:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->access$1302(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;Z)Z

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/g;->a:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;

    invoke-static {v0, v1}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->access$1202(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;Z)Z

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/g;->a:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;

    const-string v1, "Billing service disconnected!"

    invoke-static {v0, v1}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->access$1500(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;Ljava/lang/String;)V

    return-void
.end method

.method public final onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
    .locals 2

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/g;->a:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->access$1202(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;Z)Z

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/g;->a:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->access$1302(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;Z)Z

    iget-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/g;->a:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;

    invoke-static {p1}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->access$1400(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/g;->a:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;

    invoke-static {v0, v1}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->access$1302(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;Z)Z

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/g;->a:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->access$1500(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
