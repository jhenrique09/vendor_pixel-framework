.class public abstract Lcom/google/android/systemui/assist/uihints/OverlayUiHost_Factory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static newInstance(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/android/systemui/assist/uihints/OverlayUiHost;
    .locals 1

    new-instance v0, Lcom/google/android/systemui/assist/uihints/OverlayUiHost;

    check-cast p1, Lcom/google/android/systemui/assist/uihints/TouchOutsideHandler;

    invoke-direct {v0, p0, p1}, Lcom/google/android/systemui/assist/uihints/OverlayUiHost;-><init>(Landroid/content/Context;Lcom/google/android/systemui/assist/uihints/TouchOutsideHandler;)V

    return-object v0
.end method
