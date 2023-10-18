.class public final Lcom/google/android/systemui/DisplayCutoutEmulationAdapter;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mObserver:Lcom/google/android/systemui/DisplayCutoutEmulationAdapter$1;

.field public final mOverlayManager:Landroid/content/om/IOverlayManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/systemui/DisplayCutoutEmulationAdapter$1;

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/systemui/DisplayCutoutEmulationAdapter$1;-><init>(Lcom/google/android/systemui/DisplayCutoutEmulationAdapter;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/systemui/DisplayCutoutEmulationAdapter;->mObserver:Lcom/google/android/systemui/DisplayCutoutEmulationAdapter$1;

    iput-object p1, p0, Lcom/google/android/systemui/DisplayCutoutEmulationAdapter;->mContext:Landroid/content/Context;

    const-string v1, "overlay"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/om/IOverlayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/om/IOverlayManager;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/systemui/DisplayCutoutEmulationAdapter;->mOverlayManager:Landroid/content/om/IOverlayManager;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "com.google.android.systemui.display_cutout_emulation"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p0}, Lcom/google/android/systemui/DisplayCutoutEmulationAdapter;->update()V

    return-void
.end method


# virtual methods
.method public final update()V
    .locals 11

    const-string v0, "CutoutEmulationAdapter"

    iget-object v1, p0, Lcom/google/android/systemui/DisplayCutoutEmulationAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "com.google.android.systemui.display_cutout_emulation"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const-string v3, ":"

    const/4 v5, 0x2

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    :try_start_0
    aget-object v5, v3, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    aget-object v3, v3, v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "com.google.android.systemui.display_cutout_emulation.VERSION"

    const/4 v8, -0x1

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-gt v5, v6, :cond_1

    return-void

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    const-string v9, "com.android.internal.display.cutout.emulation"

    if-nez v6, :cond_2

    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string p0, "Invalid overlay prefix: "

    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object p0, p0, Lcom/google/android/systemui/DisplayCutoutEmulationAdapter;->mOverlayManager:Landroid/content/om/IOverlayManager;

    :try_start_1
    const-string v0, "android"

    invoke-interface {p0, v0, v4}, Landroid/content/om/IOverlayManager;->getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :cond_3
    :goto_0
    add-int/2addr v2, v8

    if-ltz v2, :cond_4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/om/OverlayInfo;

    iget-object v6, v6, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Landroid/content/om/OverlayInfo;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/om/OverlayInfo;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    array-length v2, v0

    const/4 v6, 0x0

    move v8, v4

    :goto_1
    if-ge v8, v2, :cond_6

    aget-object v9, v0, v8

    invoke-virtual {v9}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v6, v9, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_6
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    :cond_7
    invoke-static {v3, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_4

    :cond_8
    array-length v2, v0

    move v6, v4

    :goto_2
    if-ge v6, v2, :cond_a

    aget-object v8, v0, v6

    invoke-virtual {v8}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v9

    iget-object v10, v8, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-static {v10, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eq v9, v10, :cond_9

    :try_start_2
    iget-object v8, v8, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-interface {p0, v8, v10, v4}, Landroid/content/om/IOverlayManager;->setEnabled(Ljava/lang/String;ZI)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_9
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_a
    :goto_4
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v7, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :catch_2
    move-exception p0

    const-string v1, "Invalid configuration: "

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
