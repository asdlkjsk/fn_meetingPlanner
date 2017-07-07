package com.fn.meetingmember;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MeetingMemberDAO {

	@Inject
	private SqlSession session;
	private static final String NAMESPACE = "MeetingMemberMapper.";

	public int meetingMemberWrite() {

		return 0;
	}

	public int meetingMemberUpdate(String mName) {
		return 0;
	}

	public int meetingMemberDelete() {
		return 0;
	}

	public MeetingMemberDTO meetingMemberView(String mName) {

		return null;
	}

}
