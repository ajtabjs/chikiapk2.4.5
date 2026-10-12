.class public final Lcom/voxelbusters/essentialkit/taskservices/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/voxelbusters/essentialkit/taskservices/IBackgroundProcessingListener;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/essentialkit/taskservices/IBackgroundProcessingListener;)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/taskservices/a;->a:Lcom/voxelbusters/essentialkit/taskservices/IBackgroundProcessingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/taskservices/a;->a:Lcom/voxelbusters/essentialkit/taskservices/IBackgroundProcessingListener;

    invoke-interface {v0}, Lcom/voxelbusters/essentialkit/taskservices/IBackgroundProcessingListener;->onUpdate()V

    return-void
.end method
