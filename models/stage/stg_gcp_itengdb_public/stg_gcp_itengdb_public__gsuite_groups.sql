
with source as (

    select * from {{ source('raw_gcp_itengdb_public', 'gsuite_groups') }}

),

renamed as (

    select
        _fivetran_id,
        _fivetran_deleted,
        _fivetran_synced,
        autodl,
        dt_stamp,
        groupemail,
        groupid,
        groupname,
        memberemail,
        memberrole,
        type

    from source

)

select * from renamed
