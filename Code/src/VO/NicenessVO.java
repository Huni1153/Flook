package VO;

public class NicenessVO {

	private String nicenessCode;
	private String nicenessUserCode;
	private String postCode;
	private String nicenessDate;
	
	public NicenessVO()
	{
		
	}

	public NicenessVO(String nicenessCode, String nicenessUserCode,
			String postCode, String nicenessDate) {
		this.nicenessCode = nicenessCode;
		this.nicenessUserCode = nicenessUserCode;
		this.postCode = postCode;
		this.nicenessDate = nicenessDate;
	}

	public String getNicenessCode() {
		return nicenessCode;
	}

	public void setNicenessCode(String nicenessCode) {
		this.nicenessCode = nicenessCode;
	}

	public String getNicenessUserCode() {
		return nicenessUserCode;
	}

	public void setNicenessUserCode(String nicenessUserCode) {
		this.nicenessUserCode = nicenessUserCode;
	}

	public String getPostCode() {
		return postCode;
	}

	public void setPostCode(String postCode) {
		this.postCode = postCode;
	}

	public String getNicenessDate() {
		return nicenessDate;
	}

	public void setNicenessDate(String nicenessDate) {
		this.nicenessDate = nicenessDate;
	}
}
