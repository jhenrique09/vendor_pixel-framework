.class public final Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public artist:Ljava/lang/CharSequence;

.field public final context:Landroid/content/Context;

.field public final mediaComponent:Landroid/content/ComponentName;

.field public final mediaListener:Lcom/google/android/systemui/smartspace/KeyguardMediaViewController$mediaListener$1;

.field public final mediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

.field public final plugin:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

.field public smartspaceView:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;

.field public title:Ljava/lang/CharSequence;

.field public final uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/statusbar/NotificationMediaManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->userTracker:Lcom/android/systemui/settings/UserTracker;

    iput-object p3, p0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->plugin:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    iput-object p4, p0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iput-object p5, p0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->mediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    new-instance p2, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController$mediaListener$1;

    invoke-direct {p2, p0}, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController$mediaListener$1;-><init>(Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;)V

    iput-object p2, p0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->mediaListener:Lcom/google/android/systemui/smartspace/KeyguardMediaViewController$mediaListener$1;

    new-instance p2, Landroid/content/ComponentName;

    const-class p3, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;

    invoke-direct {p2, p1, p3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->mediaComponent:Landroid/content/ComponentName;

    return-void
.end method

.method public static synthetic getSmartspaceView$annotations()V
    .locals 0

    return-void
.end method
