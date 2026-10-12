.class public Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData$Meta;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Meta"
.end annotation


# instance fields
.field private tag:J

.field final synthetic this$0:Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;

.field private versionCode:I


# direct methods
.method public constructor <init>(Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;JI)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData$Meta;->this$0:Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData$Meta;->tag:J

    iput p4, p0, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData$Meta;->versionCode:I

    return-void
.end method
