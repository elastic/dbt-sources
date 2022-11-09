
with source as (

    select * from {{ source('raw_github', 'team_membership') }}

),

renamed as (

    select
        team_id,
        user_id,
        _fivetran_synced

    from source

)

select * from renamed
