.class public final synthetic Lcom/voxelbusters/essentialkit/utilities/common/Asset$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/voxelbusters/essentialkit/utilities/common/Asset;

.field public final synthetic f$1:Lcom/voxelbusters/essentialkit/utilities/common/interfaces/ILoadAssetListener;


# direct methods
.method public synthetic constructor <init>(Lcom/voxelbusters/essentialkit/utilities/common/Asset;Lcom/voxelbusters/essentialkit/utilities/common/interfaces/ILoadAssetListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/utilities/common/Asset$$ExternalSyntheticLambda1;->f$0:Lcom/voxelbusters/essentialkit/utilities/common/Asset;

    iput-object p2, p0, Lcom/voxelbusters/essentialkit/utilities/common/Asset$$ExternalSyntheticLambda1;->f$1:Lcom/voxelbusters/essentialkit/utilities/common/interfaces/ILoadAssetListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/voxelbusters/essentialkit/utilities/common/Asset$$ExternalSyntheticLambda1;->f$0:Lcom/voxelbusters/essentialkit/utilities/common/Asset;

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/utilities/common/Asset$$ExternalSyntheticLambda1;->f$1:Lcom/voxelbusters/essentialkit/utilities/common/interfaces/ILoadAssetListener;

    invoke-virtual {v0, v1}, Lcom/voxelbusters/essentialkit/utilities/common/Asset;->lambda$load$0$com-voxelbusters-essentialkit-utilities-common-Asset(Lcom/voxelbusters/essentialkit/utilities/common/interfaces/ILoadAssetListener;)V

    return-void
.end method
