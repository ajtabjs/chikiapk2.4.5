.class public Lcom/voxelbusters/essentialkit/appshortcuts/AppShortcuts;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/voxelbusters/essentialkit/utilities/common/interfaces/IFeature;


# static fields
.field public static final IDENTIFIER_KEY:Ljava/lang/String; = "identifier"

.field public static clickListener:Lcom/voxelbusters/essentialkit/appshortcuts/IAppShortcutClickListener;

.field private static launchedShortcut:Ljava/lang/String;


# instance fields
.field private final ACTION_APP_SHORTCUT_OPEN:Ljava/lang/String;

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.voxelbusters.appshortcuts.OPEN"

    iput-object v0, p0, Lcom/voxelbusters/essentialkit/appshortcuts/AppShortcuts;->ACTION_APP_SHORTCUT_OPEN:Ljava/lang/String;

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/appshortcuts/AppShortcuts;->context:Landroid/content/Context;

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/voxelbusters/essentialkit/appshortcuts/AppShortcuts;->launchedShortcut:Ljava/lang/String;

    return-object v0
.end method

.method public static setLaunchedShortcut(Ljava/lang/String;)V
    .locals 1

    sput-object p0, Lcom/voxelbusters/essentialkit/appshortcuts/AppShortcuts;->launchedShortcut:Ljava/lang/String;

    sget-object v0, Lcom/voxelbusters/essentialkit/appshortcuts/AppShortcuts;->clickListener:Lcom/voxelbusters/essentialkit/appshortcuts/IAppShortcutClickListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/voxelbusters/essentialkit/appshortcuts/IAppShortcutClickListener;->onClick(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public Add(Lcom/voxelbusters/essentialkit/appshortcuts/AppShortcutItem;)V
    .locals 5
    .annotation runtime Lcom/voxelbusters/essentialkit/utilities/common/annotations/RunOnUiThread;
    .end annotation

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/appshortcuts/AppShortcuts;->context:Landroid/content/Context;

    const-class v2, Lcom/voxelbusters/essentialkit/appshortcuts/AppShortcutRedirectActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.voxelbusters.appshortcuts.OPEN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p1, Lcom/voxelbusters/essentialkit/appshortcuts/AppShortcutItem;->identifier:Ljava/lang/String;

    const-string v2, "identifier"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p1, Lcom/voxelbusters/essentialkit/appshortcuts/AppShortcutItem;->iconFileName:Ljava/lang/String;

    invoke-static {v1}, Lcom/voxelbusters/essentialkit/utilities/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "android.resource://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/voxelbusters/essentialkit/appshortcuts/AppShortcuts;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/raw/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/voxelbusters/essentialkit/appshortcuts/AppShortcutItem;->iconFileName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/voxelbusters/essentialkit/utilities/StringUtil;->getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "-"

    const-string v4, "_"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :goto_0
    new-instance v2, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    iget-object v3, p0, Lcom/voxelbusters/essentialkit/appshortcuts/AppShortcuts;->context:Landroid/content/Context;

    iget-object v4, p1, Lcom/voxelbusters/essentialkit/appshortcuts/AppShortcutItem;->identifier:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v3, p1, Lcom/voxelbusters/essentialkit/appshortcuts/AppShortcutItem;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object v2

    iget-object p1, p1, Lcom/voxelbusters/essentialkit/appshortcuts/AppShortcutItem;->subtitle:Ljava/lang/String;

    invoke-virtual {v2, p1}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setLongLabel(Ljava/lang/CharSequence;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setIntent(Landroid/content/Intent;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object p1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/voxelbusters/essentialkit/appshortcuts/AppShortcuts;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/graphics/drawable/IconCompat;->createWithBitmap(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setIcon(Landroidx/core/graphics/drawable/IconCompat;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/voxelbusters/essentialkit/appshortcuts/AppShortcuts;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->build()Landroidx/core/content/pm/ShortcutInfoCompat;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/core/content/pm/ShortcutManagerCompat;->pushDynamicShortcut(Landroid/content/Context;Landroidx/core/content/pm/ShortcutInfoCompat;)Z

    return-void
.end method

.method public Initialize(Lcom/voxelbusters/essentialkit/appshortcuts/IAppShortcutClickListener;)V
    .locals 1

    sput-object p1, Lcom/voxelbusters/essentialkit/appshortcuts/AppShortcuts;->clickListener:Lcom/voxelbusters/essentialkit/appshortcuts/IAppShortcutClickListener;

    sget-object p1, Lcom/voxelbusters/essentialkit/appshortcuts/AppShortcuts;->launchedShortcut:Ljava/lang/String;

    if-eqz p1, :cond_0

    new-instance p1, Lcom/voxelbusters/essentialkit/appshortcuts/a;

    invoke-direct {p1}, Lcom/voxelbusters/essentialkit/appshortcuts/a;-><init>()V

    const/16 v0, 0x64

    invoke-static {p1, v0}, Lcom/voxelbusters/essentialkit/utilities/ApplicationUtil;->fireAfterDelay(Ljava/lang/Runnable;I)V

    :cond_0
    return-void
.end method

.method public Remove(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/voxelbusters/essentialkit/utilities/common/annotations/RunOnUiThread;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/voxelbusters/essentialkit/appshortcuts/AppShortcuts;->context:Landroid/content/Context;

    invoke-static {p1, v0}, Landroidx/core/content/pm/ShortcutManagerCompat;->removeDynamicShortcuts(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public getFeatureName()Ljava/lang/String;
    .locals 1

    const-string v0, "App Shortcuts"

    return-object v0
.end method
