.class public final Lcom/voxelbusters/essentialkit/gameservices/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic a:Lcom/voxelbusters/essentialkit/gameservices/IGameServices$IReportProgressListener;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/essentialkit/gameservices/IGameServices$IReportProgressListener;)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/gameservices/a;->a:Lcom/voxelbusters/essentialkit/gameservices/IGameServices$IReportProgressListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    iget-object p1, p0, Lcom/voxelbusters/essentialkit/gameservices/a;->a:Lcom/voxelbusters/essentialkit/gameservices/IGameServices$IReportProgressListener;

    invoke-interface {p1}, Lcom/voxelbusters/essentialkit/gameservices/IGameServices$IReportProgressListener;->onSuccess()V

    return-void
.end method
