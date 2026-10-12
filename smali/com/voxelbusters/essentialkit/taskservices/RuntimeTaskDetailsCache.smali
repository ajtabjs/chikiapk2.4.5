.class public Lcom/voxelbusters/essentialkit/taskservices/RuntimeTaskDetailsCache;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static taskCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/voxelbusters/essentialkit/taskservices/RuntimeTaskDetails;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/voxelbusters/essentialkit/taskservices/RuntimeTaskDetailsCache;->taskCache:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AddTask(Ljava/lang/String;Lcom/voxelbusters/essentialkit/taskservices/RuntimeTaskDetails;)V
    .locals 1

    sget-object v0, Lcom/voxelbusters/essentialkit/taskservices/RuntimeTaskDetailsCache;->taskCache:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getTaskDetails(Ljava/lang/String;)Lcom/voxelbusters/essentialkit/taskservices/RuntimeTaskDetails;
    .locals 1

    sget-object v0, Lcom/voxelbusters/essentialkit/taskservices/RuntimeTaskDetailsCache;->taskCache:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/voxelbusters/essentialkit/taskservices/RuntimeTaskDetails;

    return-object p0
.end method

.method public static removeTask(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/voxelbusters/essentialkit/taskservices/RuntimeTaskDetailsCache;->taskCache:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
