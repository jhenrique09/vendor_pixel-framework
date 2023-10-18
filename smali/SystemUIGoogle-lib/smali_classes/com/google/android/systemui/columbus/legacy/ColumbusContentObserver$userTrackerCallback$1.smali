.class public final Lcom/google/android/systemui/columbus/legacy/ColumbusContentObserver$userTrackerCallback$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/settings/UserTracker$Callback;


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/columbus/legacy/ColumbusContentObserver;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/legacy/ColumbusContentObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusContentObserver$userTrackerCallback$1;->this$0:Lcom/google/android/systemui/columbus/legacy/ColumbusContentObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUserChanged(ILandroid/content/Context;)V
    .locals 2

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusContentObserver$userTrackerCallback$1;->this$0:Lcom/google/android/systemui/columbus/legacy/ColumbusContentObserver;

    iget-object p1, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusContentObserver;->contentResolver:Lcom/google/android/systemui/columbus/legacy/ContentResolverWrapper;

    iget-object p1, p1, Lcom/google/android/systemui/columbus/legacy/ContentResolverWrapper;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object p1, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusContentObserver;->contentResolver:Lcom/google/android/systemui/columbus/legacy/ContentResolverWrapper;

    iget-object p2, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusContentObserver;->settingsUri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusContentObserver;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v0

    iget-object p1, p1, Lcom/google/android/systemui/columbus/legacy/ContentResolverWrapper;->contentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, p0, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object p1, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusContentObserver;->callback:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusContentObserver;->settingsUri:Landroid/net/Uri;

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
