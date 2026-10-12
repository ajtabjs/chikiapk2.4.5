.class public Lcom/voxelbusters/essentialkit/utilities/Logger;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static TAG:Ljava/lang/String; = "[Voxel Busters : Essential Kit]"

.field private static logLevel:Lcom/voxelbusters/essentialkit/utilities/LogLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/voxelbusters/essentialkit/utilities/LogLevel;->Info:Lcom/voxelbusters/essentialkit/utilities/LogLevel;

    sput-object v0, Lcom/voxelbusters/essentialkit/utilities/Logger;->logLevel:Lcom/voxelbusters/essentialkit/utilities/LogLevel;

    invoke-static {}, Lcom/voxelbusters/essentialkit/utilities/NativePluginHelper;->getUnityContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/voxelbusters/essentialkit/utilities/ApplicationUtil;->isDebugBuild(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/voxelbusters/essentialkit/utilities/LogLevel;->Critical:Lcom/voxelbusters/essentialkit/utilities/LogLevel;

    :goto_0
    invoke-static {v0}, Lcom/voxelbusters/essentialkit/utilities/Logger;->setDebugLevel(Lcom/voxelbusters/essentialkit/utilities/LogLevel;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static critical(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/voxelbusters/essentialkit/utilities/Logger;->logLevel:Lcom/voxelbusters/essentialkit/utilities/LogLevel;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lcom/voxelbusters/essentialkit/utilities/LogLevel;->Critical:Lcom/voxelbusters/essentialkit/utilities/LogLevel;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    invoke-static {}, Lcom/voxelbusters/essentialkit/utilities/Logger;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static debug(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/voxelbusters/essentialkit/utilities/Logger;->isInfoLoggingLevel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/voxelbusters/essentialkit/utilities/Logger;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static error(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/voxelbusters/essentialkit/utilities/Logger;->logLevel:Lcom/voxelbusters/essentialkit/utilities/LogLevel;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lcom/voxelbusters/essentialkit/utilities/LogLevel;->Error:Lcom/voxelbusters/essentialkit/utilities/LogLevel;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    invoke-static {}, Lcom/voxelbusters/essentialkit/utilities/Logger;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static getTag()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/voxelbusters/essentialkit/utilities/Logger;->isInfoLoggingLevel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x4

    aget-object v0, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/voxelbusters/essentialkit/utilities/Logger;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static isInfoLoggingLevel()Z
    .locals 2

    sget-object v0, Lcom/voxelbusters/essentialkit/utilities/Logger;->logLevel:Lcom/voxelbusters/essentialkit/utilities/LogLevel;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lcom/voxelbusters/essentialkit/utilities/LogLevel;->Info:Lcom/voxelbusters/essentialkit/utilities/LogLevel;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static setDebugLevel(Lcom/voxelbusters/essentialkit/utilities/LogLevel;)V
    .locals 0

    sput-object p0, Lcom/voxelbusters/essentialkit/utilities/Logger;->logLevel:Lcom/voxelbusters/essentialkit/utilities/LogLevel;

    return-void
.end method

.method public static warning(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/voxelbusters/essentialkit/utilities/Logger;->logLevel:Lcom/voxelbusters/essentialkit/utilities/LogLevel;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lcom/voxelbusters/essentialkit/utilities/LogLevel;->Warning:Lcom/voxelbusters/essentialkit/utilities/LogLevel;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    invoke-static {}, Lcom/voxelbusters/essentialkit/utilities/Logger;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
