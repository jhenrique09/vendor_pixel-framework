.class public abstract Lcom/google/android/systemui/dreamliner/DreamlinerDockModule_ProvideDockManagerFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static provideDockManager(Ljavax/inject/Provider;)Lcom/android/systemui/dock/DockManager;
    .locals 0

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/dock/DockManager;

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object p0
.end method
