.class public interface abstract Lcom/google/hardware/biometrics/sidefps/IFingerprintExt;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x24

    const/16 v1, 0x2e

    const-string v2, "com$google$hardware$biometrics$sidefps$IFingerprintExt"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/hardware/biometrics/sidefps/IFingerprintExt;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method
