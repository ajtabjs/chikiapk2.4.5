.class public final Lcom/voxelbusters/essentialkit/appshortcuts/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    sget-object v0, Lcom/voxelbusters/essentialkit/appshortcuts/AppShortcuts;->clickListener:Lcom/voxelbusters/essentialkit/appshortcuts/IAppShortcutClickListener;

    invoke-static {}, Lcom/voxelbusters/essentialkit/appshortcuts/AppShortcuts;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/voxelbusters/essentialkit/appshortcuts/IAppShortcutClickListener;->onClick(Ljava/lang/String;)V

    return-void
.end method
