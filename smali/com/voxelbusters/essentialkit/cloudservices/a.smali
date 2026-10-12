.class public final Lcom/voxelbusters/essentialkit/cloudservices/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$IActionCompleteListener;


# instance fields
.field public final synthetic a:Lcom/voxelbusters/essentialkit/cloudservices/b;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/essentialkit/cloudservices/b;)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/cloudservices/a;->a:Lcom/voxelbusters/essentialkit/cloudservices/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/a;->a:Lcom/voxelbusters/essentialkit/cloudservices/b;

    iget-object v0, v0, Lcom/voxelbusters/essentialkit/cloudservices/b;->a:Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;

    invoke-static {v0}, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->access$100(Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;)V

    return-void
.end method
