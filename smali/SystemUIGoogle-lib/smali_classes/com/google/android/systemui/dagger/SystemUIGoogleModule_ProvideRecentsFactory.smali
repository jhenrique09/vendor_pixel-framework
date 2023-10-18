.class public abstract Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideRecentsFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static provideRecents(Landroid/content/Context;Lcom/android/systemui/recents/OverviewProxyRecentsImpl;Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/recents/Recents;
    .locals 1

    new-instance v0, Lcom/android/systemui/recents/Recents;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/recents/Recents;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/OverviewProxyRecentsImpl;Lcom/android/systemui/statusbar/CommandQueue;)V

    return-object v0
.end method
