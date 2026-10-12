.class public final synthetic Lcom/voxelbusters/essentialkit/gameservices/ImageManagerUtility$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;

.field public final synthetic f$1:Lcom/voxelbusters/essentialkit/utilities/common/interfaces/ILoadAssetListener;

.field public final synthetic f$2:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Lcom/voxelbusters/essentialkit/utilities/common/interfaces/ILoadAssetListener;Landroid/net/Uri;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/gameservices/ImageManagerUtility$$ExternalSyntheticLambda0;->f$0:Landroid/app/Activity;

    iput-object p2, p0, Lcom/voxelbusters/essentialkit/gameservices/ImageManagerUtility$$ExternalSyntheticLambda0;->f$1:Lcom/voxelbusters/essentialkit/utilities/common/interfaces/ILoadAssetListener;

    iput-object p3, p0, Lcom/voxelbusters/essentialkit/gameservices/ImageManagerUtility$$ExternalSyntheticLambda0;->f$2:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/ImageManagerUtility$$ExternalSyntheticLambda0;->f$0:Landroid/app/Activity;

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/gameservices/ImageManagerUtility$$ExternalSyntheticLambda0;->f$1:Lcom/voxelbusters/essentialkit/utilities/common/interfaces/ILoadAssetListener;

    iget-object v2, p0, Lcom/voxelbusters/essentialkit/gameservices/ImageManagerUtility$$ExternalSyntheticLambda0;->f$2:Landroid/net/Uri;

    invoke-static {v0, v1, v2}, Lcom/voxelbusters/essentialkit/gameservices/ImageManagerUtility;->lambda$loadImage$0(Landroid/app/Activity;Lcom/voxelbusters/essentialkit/utilities/common/interfaces/ILoadAssetListener;Landroid/net/Uri;)V

    return-void
.end method
