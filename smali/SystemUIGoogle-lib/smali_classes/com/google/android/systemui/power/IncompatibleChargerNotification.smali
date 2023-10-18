.class public final Lcom/google/android/systemui/power/IncompatibleChargerNotification;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final KEY_COMPATIBLE_CHARGER_TIME:Ljava/lang/String; = "last_compatible_charger_time"

.field public static final KEY_INCOMPATIBLE_CHARGER_TIME:Ljava/lang/String; = "last_incompatible_charger_time"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mMainHandler:Landroid/os/Handler;

.field public mNotificationActive:Z

.field public final mNotificationManager:Landroid/app/NotificationManager;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/systemui/power/IncompatibleChargerNotification;->mMainHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/systemui/power/IncompatibleChargerNotification;->mNotificationActive:Z

    iput-object p1, p0, Lcom/google/android/systemui/power/IncompatibleChargerNotification;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/systemui/power/IncompatibleChargerNotification;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/google/android/systemui/power/IncompatibleChargerNotification;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    const-class p2, Landroid/app/NotificationManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/google/android/systemui/power/IncompatibleChargerNotification;->mNotificationManager:Landroid/app/NotificationManager;

    return-void
.end method

.method public static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "incompatible_charger_shared_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method
