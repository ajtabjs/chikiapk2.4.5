.class public Lcom/voxelbusters/essentialkit/taskservices/BackgroundTaskOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static Default:Lcom/voxelbusters/essentialkit/taskservices/BackgroundTaskOptions;


# instance fields
.field public delay:F

.field public executeOnCallingThread:Z

.field public repeatUntilCancelledWithInterval:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/voxelbusters/essentialkit/taskservices/BackgroundTaskOptions;

    invoke-direct {v0}, Lcom/voxelbusters/essentialkit/taskservices/BackgroundTaskOptions;-><init>()V

    sput-object v0, Lcom/voxelbusters/essentialkit/taskservices/BackgroundTaskOptions;->Default:Lcom/voxelbusters/essentialkit/taskservices/BackgroundTaskOptions;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/voxelbusters/essentialkit/taskservices/BackgroundTaskOptions;->executeOnCallingThread:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/voxelbusters/essentialkit/taskservices/BackgroundTaskOptions;->delay:F

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/voxelbusters/essentialkit/taskservices/BackgroundTaskOptions;->repeatUntilCancelledWithInterval:F

    return-void
.end method
