.class public abstract Lcom/google/android/systemui/assist/uihints/KeyboardMonitor_Factory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static newInstance(Landroid/content/Context;Ljava/util/Optional;)Lcom/google/android/systemui/assist/uihints/KeyboardMonitor;
    .locals 1

    new-instance v0, Lcom/google/android/systemui/assist/uihints/KeyboardMonitor;

    invoke-direct {v0, p0, p1}, Lcom/google/android/systemui/assist/uihints/KeyboardMonitor;-><init>(Landroid/content/Context;Ljava/util/Optional;)V

    return-object v0
.end method
